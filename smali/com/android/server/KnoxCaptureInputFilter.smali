.class public final Lcom/android/server/KnoxCaptureInputFilter;
.super Landroid/view/InputFilter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activeScanDeviceId:I

.field public final context:Landroid/content/Context;

.field public final scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

.field public final scannerDevices:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/KnoxCaptureInputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->context:Landroid/content/Context;

    const-string/jumbo p1, "ScanEventThread"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance v0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;I)V
    .locals 2

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Landroid/view/KeyEvent;

    iget p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    iput p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    :cond_1
    iget-object p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const/16 v0, 0x354

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    iget v1, p0, Lcom/android/server/KnoxCaptureInputFilter;->activeScanDeviceId:I

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/16 p1, 0x353

    invoke-static {p2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter;->scanEventHandler:Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    :cond_4
    return-void
.end method
