.class public final Lcom/android/server/am/MARsPackageInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public BatteryUsage:D

.field public appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public checkJobRunningCount:I

.field public curLevel:I

.field public disableReason:I

.field public disableResetTime:J

.field public disableType:I

.field public fasReason:Ljava/lang/String;

.field public fasType:I

.field public hasAppIcon:Z

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public isSCPMTarget:Z

.field public lastUsedTime:J

.field public maxLevel:I

.field public final name:Ljava/lang/String;

.field public nextKillTimeForLongRunningProcess:J

.field public optionFlag:I

.field public packageType:I

.field public preBatteryUsage:D

.field public resetTime:J

.field public sbike:I

.field public sharedUidName:Ljava/lang/String;

.field public state:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntity;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    move v2, v4

    goto :goto_1

    :cond_2
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const-string v5, "2"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    const-string v5, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v2, 0x8

    goto :goto_1

    :cond_5
    const-string v5, "4"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    :goto_1
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    const-wide/32 v7, -0xdbba0

    iput-wide v7, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-eq v0, v3, :cond_c

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NumberFormatException !"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "MARsPackageInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    return-void
.end method


# virtual methods
.method public final dumpRestrictedStatus(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "-Uid "

    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%8d"

    const-string v3, "-Pkg "

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-POL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpStatus(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "-RST "

    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    invoke-static {v1, v2}, Lcom/android/server/am/mars/MARsUtils;->formatDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-PT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%6d"

    const-string v3, "-ST "

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%2d"

    const-string v3, "-SC "

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    const-string v3, "F"

    const-string/jumbo v4, "T"

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-DT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "-DR "

    invoke-static {v2, v1, v0, v5}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "-DD "

    invoke-static {v2, v1, v0, v5}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eqz v1, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%8d"

    const-string v4, "("

    invoke-static {v3, v2, v0, v4}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    const-string v3, "-"

    if-eqz v2, :cond_2

    const-string/jumbo v2, "S"

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")-curLv "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-maxLv "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-FAS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Y"

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "N"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%4d"

    invoke-static {v5, v2, v0, v4}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_4

    const-string v3, "A"

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")-BU "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%10f"

    const-string v4, "-Pkg "

    invoke-static {v3, v2, v0, v4}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "--(R)"

    goto :goto_3

    :cond_5
    const-string p0, ""

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final getDisableReason()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return p0
.end method

.method public final getDisableType()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    return p0
.end method

.method public final getMaxLevel()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    return p0
.end method

.method public final getResetTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    return p0
.end method

.method public final initOptionFlag()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ".cts."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    goto :goto_0

    :cond_2
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    :cond_3
    :goto_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    :cond_4
    return-void
.end method

.method public final setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-void
.end method

.method public final updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->preBatteryUsage:D

    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    return-void
.end method
