.class public final Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClientChannel:Landroid/view/InputChannel;

.field public final mInputSurface:Landroid/view/SurfaceControl;

.field public mIsIntercepting:Z

.field public final mWindowHandle:Landroid/view/InputWindowHandle;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mClientChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mInputSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/InputWindowHandle;

    new-instance v1, Landroid/view/InputApplicationHandle;

    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-object p1, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    const/16 p1, 0x7df

    iput p1, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    iput-wide v2, v0, Landroid/view/InputWindowHandle;->dispatchingTimeoutMillis:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroid/view/InputWindowHandle;->scaleFactor:F

    const p1, 0xc00c

    iput p1, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    invoke-virtual {v0, v4}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p3, p2}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    invoke-virtual {p1, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x2

    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p3, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    return-void
.end method
