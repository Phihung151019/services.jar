.class public final Lcom/android/server/am/mars/MARsBigData$UsageInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final batteryUsage:Ljava/lang/String;

.field public final disableLevelSize:Ljava/lang/String;

.field public final extras:Ljava/lang/String;

.field public final fasLevelSize:Ljava/lang/String;

.field public final forceStopLevelSize:Ljava/lang/String;

.field public final freecessLevelSize:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final totalSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IllegalArgumentException"

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    const/4 p1, 0x1

    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    const/4 p1, 0x2

    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    const/4 p1, 0x3

    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "PKNA"

    iget-object v2, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "PKLV"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMA"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMS"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMR"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMB"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "BATU"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "EXTR"

    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
