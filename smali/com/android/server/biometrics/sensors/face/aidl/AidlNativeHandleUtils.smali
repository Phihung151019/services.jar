.class public abstract Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/common/NativeHandle;

    invoke-direct {v0}, Landroid/hardware/common/NativeHandle;-><init>()V

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getInts()[I

    move-result-object p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->ints:[I

    array-length p0, v1

    new-array p0, p0, [Landroid/os/ParcelFileDescriptor;

    iput-object p0, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    const/4 p0, 0x0

    :goto_0
    array-length v2, v1

    if-ge p0, v2, :cond_1

    iget-object v2, v0, Landroid/hardware/common/NativeHandle;->fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v1, p0

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    aput-object v3, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
