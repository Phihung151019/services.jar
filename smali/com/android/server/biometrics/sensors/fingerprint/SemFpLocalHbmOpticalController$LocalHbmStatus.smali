.class final enum Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public static final enum LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public static final enum LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

.field public static final enum LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    const-string v1, "0"

    const-string v2, "LOCAL_HBM_MODE_OFF"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    const-string v2, "1"

    const-string v3, "LOCAL_HBM_MODE_ON_SOURCE_OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_OFF:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    const-string v3, "2"

    const-string v4, "LOCAL_HBM_MODE_ON_SOURCE_ON"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->LOCAL_HBM_MODE_ON_SOURCE_ON:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->$VALUES:[Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;
    .locals 1

    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->$VALUES:[Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    invoke-virtual {v0}, [Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;

    return-object v0
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$LocalHbmStatus;->value:Ljava/lang/String;

    return-object p0
.end method
