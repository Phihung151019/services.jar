.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field public final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;-><init>(II)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    return-void
.end method
