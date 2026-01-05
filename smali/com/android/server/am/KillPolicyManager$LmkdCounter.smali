.class public final Lcom/android/server/am/KillPolicyManager$LmkdCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public bServiceKillCount:J

.field public bServiceKillOccurredCount:I

.field public cachedMinKillCount:J

.field public cycleBServiceKillCount:J

.field public cycleCachedMinKillCount:J

.field public cycleHomeToPercKillCount:J

.field public cyclePickedKillCount:J

.field public cyclePreviousKillCount:J

.field public cycleTotalKillCount:J

.field public cycleVisToFgKillCount:J

.field public final kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public pickedKillCount:J

.field public prevBServiceCountOfLmkd:J

.field public prevCachedMinCountOfLmkd:J

.field public prevCycleBServiceCountOfLmkd:J

.field public prevCycleCachedMinCountOfLmkd:J

.field public prevCycleHomeToPercCountOfLmkd:J

.field public prevCyclePickedCountOfLmkd:J

.field public prevCyclePreviousCountOfLmkd:J

.field public prevCycleTotalCountOfLmkd:J

.field public prevCycleVisToFgCountOfLmkd:J

.field public prevPickedCountOfLmkd:J

.field public prevPreviousCountOfLmkd:J

.field public prevTinyCycleBServiceCountOfLmkd:J

.field public prevTinyCycleCachedMinCountOfLmkd:J

.field public prevTinyCyclePickedCountOfLmkd:J

.field public prevTinyCyclePreviousCountOfLmkd:J

.field public prevTotalCountOfLmkd:J

.field public previousKillCount:J

.field public previousKillOccurredCount:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public tinyCycleBServiceKillCount:J

.field public tinyCycleCachedMinKillCount:J

.field public tinyCyclePickedKillCount:J

.field public tinyCyclePreviousKillCount:J

.field public totalKillCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    iget-wide v4, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v4, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    iget-wide v8, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    iget-wide v14, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v14, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    iget-wide v14, v1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v14, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    iput-wide v4, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    iput v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    iput-wide v2, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    iput-wide v6, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    iput-wide v8, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    iput-wide v12, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    return-void
.end method


# virtual methods
.method public final getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .locals 4

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    const-string v1, "Cycle currentKillCountLmkd : (cE : "

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPr : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cCm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ActivityManager_kpm"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    return-void
.end method
