.class public final Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEmptyBytes:[B

.field public mHasSystemExclusiveStarted:Z

.field public mNumStoredSystemExclusiveBytes:I

.field public mShiftedCableNumber:B

.field public mStoredSystemExclusiveBytes:[B


# virtual methods
.method public final writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0

    iget-byte p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/lit8 p0, p0, 0xf

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
