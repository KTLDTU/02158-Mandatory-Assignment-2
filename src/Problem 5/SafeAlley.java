//Skeleton implementation of a safe Alley class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2022

//Hans Henrik Lovengreen     Sep 26, 2022

public class SafeAlley extends Alley {
    int up, down;
    Semaphore upSem, downSem, inDownSem, inUpSem;

    protected SafeAlley() {
        up = 0;   down = 0;
        upSem   = new Semaphore(1);
        downSem = new Semaphore(1);
        inDownSem = new Semaphore(1);
        inUpSem = new Semaphore(1);
    }

    /* Block until car no. may enter alley */
    public void enter(int no) throws InterruptedException {
        if (no < 5) {
            downSem.P();
            inDownSem.P();
            if (down == 0) upSem.P();    // block for up-going cars
            down++;
            inDownSem.V();
            downSem.V();
        } else {
            upSem.P();
            inUpSem.P();
            if (up == 0) downSem.P();    // block for down-going cars
            up++;
            inUpSem.V();
            upSem.V();
        }

    }

    /* Register that car no. has left the alley */
    public void leave(int no) throws InterruptedException {
        if (no < 5) {
            inDownSem.P();
            down--;
            if (down == 0) upSem.V();    // enable up-going cars again
            inDownSem.V();
        } else {
            inUpSem.P();
            up--;
            if (up == 0) downSem.V();    // enable down-going cars again
            inUpSem.V();
        }
    }

}
