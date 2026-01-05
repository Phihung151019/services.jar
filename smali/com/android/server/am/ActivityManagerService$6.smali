.class public final Lcom/android/server/am/ActivityManagerService$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_0
    invoke-virtual {v0, p0, v2}, Lcom/android/server/am/FreecessController;->releaseFreezedAppPid(II)V

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    if-eqz v0, :cond_3

    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_2
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_1
    const-string/jumbo v2, "release"

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3, v2}, Landroid/os/ICustomFrequencyManager;->requestFreezeSlowdown(IIZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez v1, :cond_4

    const-class v1, Lcom/android/server/BinderCallsStatsService$Internal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BinderCallsStatsService$Internal;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    :cond_4
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBinderStatsService:Lcom/android/server/BinderCallsStatsService$Internal;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$6;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/BinderCallsStatsService$Internal;->reportProcessDied(IILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
