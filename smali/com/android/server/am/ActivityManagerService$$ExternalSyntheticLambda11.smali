.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->updateForceBackgroundCheck(Z)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Landroid/os/Binder;->isSystemServerBinderTrackerEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/IApplicationThread$Delegator;->startBinderTracking()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
