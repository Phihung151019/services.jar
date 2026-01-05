.class public final Lcom/android/server/battery/GlobalEventListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final listener:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

.field public final registeredEvents:I


# direct methods
.method public constructor <init>(ILcom/android/server/BatteryService$$ExternalSyntheticLambda14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/battery/GlobalEventListener;->registeredEvents:I

    iput-object p2, p0, Lcom/android/server/battery/GlobalEventListener;->listener:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    return-void
.end method


# virtual methods
.method public final onEvent(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/battery/GlobalEventListener;->listener:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/BatteryService;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "[SS]MultiSbpController"

    const-string/jumbo v2, "start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/MultiSbpController;I)V

    iget-object v2, v0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/MultiSbpController;I)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BatteryService;->globalEventListener:Lcom/android/server/battery/GlobalEventListener;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registerContentObserver run MultiSbpController.start triggered by : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
