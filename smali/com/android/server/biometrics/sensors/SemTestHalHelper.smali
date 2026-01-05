.class public final Lcom/android/server/biometrics/sensors/SemTestHalHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAuthActionList:Ljava/util/List;

.field public final mBiometricType:I

.field public final mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public mDelayAuthAction:J

.field public final mEnrollActionList:Ljava/util/List;


# direct methods
.method public constructor <init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addFpCaptureFailedAction(IILjava/util/List;)V
    .locals 6

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v2, 0x6

    const/16 v3, 0x2711

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    sget-object v3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/4 v5, 0x2

    invoke-direct {v4, v3, p0, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v5, 0x2712

    invoke-direct {v4, v1, p0, v2, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v5, 0x2713

    invoke-direct {v4, v1, p0, v2, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/4 v4, 0x1

    invoke-direct {v0, v3, p0, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v3, 0x2716

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 p2, 0x2714

    invoke-direct {p1, v1, p0, v2, p2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addFpDefaultCaptureSuccessAction(Ljava/util/List;)V
    .locals 6

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const/16 v2, 0x2711

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/4 v3, 0x6

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/4 v5, 0x2

    invoke-direct {v4, v2, p0, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v5, 0x2712

    invoke-direct {v4, v1, p0, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v5, 0x2713

    invoke-direct {v4, v1, p0, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/4 v4, 0x1

    invoke-direct {v0, v2, p0, v4}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v2, 0x2715

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
