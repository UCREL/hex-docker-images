# S3 Persistent Storage

This instance is connected to the local S3 storage instance.

To have your files saved, keep them in the `work` folder.


## More Detailed Explanation

This means that any data in your `work` folder will be persisted across instances, and will be stored on Hex's storage
system automatically. However, this storage is significantly slower than the local storage in your home folder, so you
may wish to transfer files in/out of the work folder to improve your program's performance if it does a large number of
out-of-order writes.

