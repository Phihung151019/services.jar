.class public final Lcom/android/server/audio/AudioService$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    :cond_1
    const-string/jumbo p0, "screen_state=on"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    :cond_3
    const-string/jumbo p0, "screen_state=off"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
