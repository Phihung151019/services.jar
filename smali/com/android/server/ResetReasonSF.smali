.class Lcom/android/server/ResetReasonSF;
.super Lcom/android/server/CommonNativeResetReasonCode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ResetReasonCode;-><init>()V

    return-void
.end method


# virtual methods
.method public addCauseContents()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "graphics"

    return-object p0
.end method

.method public getPatternByReason()Ljava/util/regex/Pattern;
    .locals 1

    const-string/jumbo v0, "pid: (\\d+).*surfaceflinger.*|pid: (\\d+).*android\\.hardware\\.graphics.*|pid: (\\d+).*vendor\\.qti\\.hardware\\.display.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ResetReasonCode;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
