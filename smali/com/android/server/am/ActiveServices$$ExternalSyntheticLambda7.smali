.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;->f$0:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    sget-object v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x34

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
