.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>(Landroid/companion/virtual/camera/IVirtualCameraCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo p1, "android.companion.virtualcamera.IVirtualCameraCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final getMaxTransactionId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getTransactionName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "onStreamClosed"

    return-object p0

    :cond_1
    const-string/jumbo p0, "onProcessCaptureRequest"

    return-object p0

    :cond_2
    const-string/jumbo p0, "onStreamConfigured"

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const-string/jumbo v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    invoke-interface {p0, p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamClosed(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    int-to-long p2, p3

    invoke-interface {p0, p1, p2, p3}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onProcessCaptureRequest(IJ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil$1;->val$camera:Landroid/companion/virtual/camera/IVirtualCameraCallback;

    if-eq p1, v1, :cond_6

    const/16 p0, 0x23

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    move v7, p0

    goto :goto_0

    :cond_6
    move v7, v1

    :goto_0
    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    :goto_1
    return v1
.end method
