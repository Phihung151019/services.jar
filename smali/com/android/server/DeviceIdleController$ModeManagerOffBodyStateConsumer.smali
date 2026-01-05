.class Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public static -$$Nest$monModeManagerOffBodyChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Offbody event from mode manager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerOffBodyState:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/server/DeviceIdleController;->mIsOffBody:Z

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerOffBodyStateConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
