.class public final Lcom/samsung/android/server/vibrator/VibratorHqmHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BIG_DATA:[Ljava/lang/String;

.field public static sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "FW_TVPC"

    const-string v1, "FW_EVPC"

    const-string v2, "FW_RVPC"

    const-string v3, "FW_AVPC"

    const-string v4, "FW_NVPC"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method
