.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mReceiver:Landroid/media/midi/MidiReceiver;


# virtual methods
.method public final onFlush()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->flush()V

    :cond_0
    return-void
.end method

.method public final onSend([BIIJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_0
    return-void
.end method
