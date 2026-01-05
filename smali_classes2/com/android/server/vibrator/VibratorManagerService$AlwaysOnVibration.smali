.class public final Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final alwaysOnId:I

.field public final callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final effects:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iput-object p3, p0, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    return-void
.end method
