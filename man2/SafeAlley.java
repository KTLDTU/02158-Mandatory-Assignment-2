//Skeleton implementation of a safe Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2022

//Hans Henrik Lovengreen     Sep 26, 2022

public class SafeAlley extends Alley {
    int up, down, turn;
    Semaphore inDownSem, inUpSem, turnSem;

    protected SafeAlley() {
        up = 0;   down = 0;
        turn = -1;
        inDownSem = new Semaphore(1);
        inUpSem = new Semaphore(1);
        turnSem = new Semaphore(1);
    }

    /* Block until car no. may enter alley */
    public void enter(int no) throws InterruptedException {
        if (no < 5) {
            while (true) {
                inDownSem.P();

                if (turn == -1) {
                    turnSem.P();
                    Thread.sleep(1000);

                    if (turn == -1) {
                        turn = 0;
                        turnSem.V();
                        break;
                    }
                    else
                        turnSem.V();
                }
                else if (turn == 0)
                    break;

                inDownSem.V();
            }

            down++;
            inDownSem.V();
        } else {
            while (true) {
                inUpSem.P();

                if (turn == -1) {
                    turnSem.P();

                    if (turn == -1) {
                        turn = 1;
                        turnSem.V();
                        break;
                    }
                    else
                        turnSem.V();
                }
                else if (turn == 1)
                    break;

                inUpSem.V();
            }

            up++;
            inUpSem.V();
        }

    }

    /* Register that car no. has left the alley */
    public void leave(int no) throws InterruptedException {
        if (no < 5) {
            inDownSem.P();
            down--;
            if (down == 0) turn = -1;
            inDownSem.V();
        } else {
            inUpSem.P();
            up--;
            if (up == 0) turn = -1;
            inUpSem.V();
        }
    }

}
