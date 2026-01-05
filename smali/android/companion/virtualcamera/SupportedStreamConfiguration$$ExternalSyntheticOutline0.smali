.class public abstract synthetic Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(Landroid/os/Parcel;II)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    return p1
.end method

.method public static m(IILandroid/os/Parcel;I)V
    .locals 0

    sub-int/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
