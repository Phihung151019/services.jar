.class public final Lcom/android/server/lights/LightsService$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, v0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    const-string/jumbo v0, "LightsService"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iget v2, v2, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-static {p1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iget v1, v1, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-static {p1, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    iget p1, p1, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const-class p1, Lcom/android/server/lights/LightsManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LightsService$LightImpl;

    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    :cond_1
    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LightsService$LightImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    :cond_2
    return-void
.end method
