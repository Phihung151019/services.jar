.class public final Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    return p0
.end method
