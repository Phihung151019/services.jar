.class Lcom/android/server/ResetReasonEX;
.super Lcom/android/server/CommonPlatformResetReasonCode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    return-void
.end method


# virtual methods
.method public addSuffix()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "sys_error"

    return-object p0
.end method
