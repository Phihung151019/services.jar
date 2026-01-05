.class public final Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 0

    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p3

    :try_start_0
    iget-object p5, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object p5, p5, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p5, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/4 p5, 0x2

    if-eq p2, p5, :cond_3

    const/16 p5, 0x100

    if-ne p2, p5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0x28

    if-lt p4, p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget-wide p1, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/16 p2, 0xa

    if-gt p4, p2, :cond_4

    iget-boolean p2, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/16 p2, 0x400

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    const/16 p2, 0x80

    if-ne p0, p2, :cond_4

    new-instance p0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    iget-object p2, p1, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strPkgName:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strUid:Ljava/lang/String;

    iget-boolean p2, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz p2, :cond_2

    const-string p2, "1"

    goto :goto_0

    :cond_2
    const-string p2, "0"

    :goto_0
    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strMode:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strFasReason:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strDisableReason:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strExtras:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strLevel:Ljava/lang/String;

    iget-wide p1, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/database/FASEntityBuilder;->strResetTime:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p3

    return-void

    :cond_4
    const/4 p0, 0x0

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object p1, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    :cond_5
    return-void

    :goto_3
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
