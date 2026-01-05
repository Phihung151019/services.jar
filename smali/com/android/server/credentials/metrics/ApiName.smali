.class public final enum Lcom/android/server/credentials/metrics/ApiName;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/metrics/ApiName;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

.field public static final sRequestInfoToMetric:Ljava/util/Map;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/android/server/credentials/metrics/ApiName;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v10, 0x0

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    new-instance v1, Lcom/android/server/credentials/metrics/ApiName;

    const-string v2, "GET_CREDENTIAL"

    const/4 v11, 0x1

    invoke-direct {v1, v2, v11, v11}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    new-instance v2, Lcom/android/server/credentials/metrics/ApiName;

    const-string v3, "GET_CREDENTIAL_VIA_REGISTRY"

    const/4 v12, 0x2

    const/16 v4, 0x9

    invoke-direct {v2, v3, v12, v4}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    new-instance v3, Lcom/android/server/credentials/metrics/ApiName;

    const-string v5, "CREATE_CREDENTIAL"

    const/4 v13, 0x3

    invoke-direct {v3, v5, v13, v12}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/server/credentials/metrics/ApiName;

    const-string v6, "CLEAR_CREDENTIAL"

    const/4 v14, 0x4

    invoke-direct {v5, v6, v14, v13}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    move-object v6, v5

    new-instance v5, Lcom/android/server/credentials/metrics/ApiName;

    const-string v7, "IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v14}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    move-object v7, v6

    new-instance v6, Lcom/android/server/credentials/metrics/ApiName;

    const-string/jumbo v9, "SET_ENABLED_PROVIDERS"

    const/4 v15, 0x6

    invoke-direct {v6, v9, v15, v8}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    move-object v8, v7

    new-instance v7, Lcom/android/server/credentials/metrics/ApiName;

    const-string v9, "GET_CREDENTIAL_PROVIDER_SERVICES"

    move/from16 v16, v10

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v15}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

    move-object v9, v8

    new-instance v8, Lcom/android/server/credentials/metrics/ApiName;

    const-string/jumbo v15, "REGISTER_CREDENTIAL_DESCRIPTION"

    move/from16 v17, v11

    const/16 v11, 0x8

    invoke-direct {v8, v15, v11, v10}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    move-object v10, v9

    new-instance v9, Lcom/android/server/credentials/metrics/ApiName;

    const-string/jumbo v15, "UNREGISTER_CREDENTIAL_DESCRIPTION"

    invoke-direct {v9, v15, v4, v11}, Lcom/android/server/credentials/metrics/ApiName;-><init>(Ljava/lang/String;II)V

    move-object v4, v10

    filled-new-array/range {v0 .. v9}, [Lcom/android/server/credentials/metrics/ApiName;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->$VALUES:[Lcom/android/server/credentials/metrics/ApiName;

    new-array v0, v14, [Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    iget v3, v3, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v6, "android.credentials.selection.TYPE_CREATE"

    invoke-direct {v5, v6, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v16

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    iget v1, v1, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v5, "android.credentials.selection.TYPE_GET"

    invoke-direct {v3, v5, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v17

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v2, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "android.credentials.selection.TYPE_GET_VIA_REGISTRY"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v12

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v4, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "android.credentials.selection.TYPE_UNDEFINED"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v13

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->sRequestInfoToMetric:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    return-void
.end method

.method public static getMetricCodeFromRequestInfo(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->sRequestInfoToMetric:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "ApiName"

    const-string v0, "Attempted to use an unsupported string key request info"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    iget p0, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    return p0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ApiName;
    .locals 1

    const-class v0, Lcom/android/server/credentials/metrics/ApiName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/ApiName;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ApiName;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->$VALUES:[Lcom/android/server/credentials/metrics/ApiName;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ApiName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/ApiName;

    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    return p0
.end method
