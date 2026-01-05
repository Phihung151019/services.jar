.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$2:Z

    iput-wide p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$2:Z

    iget-wide v3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$3:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iput-boolean v2, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v2, :cond_1

    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-lez p0, :cond_2

    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v6, 0x3a

    if-nez v5, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {p0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    sub-long/2addr v1, v3

    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_3
    return-void
.end method
