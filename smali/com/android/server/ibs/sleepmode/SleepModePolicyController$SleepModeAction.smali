.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

.field public final mContext:Landroid/content/Context;

.field public final masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

.field public final wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    invoke-direct {p1, p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    return-void
.end method
