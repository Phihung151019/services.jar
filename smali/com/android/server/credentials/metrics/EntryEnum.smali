.class public final enum Lcom/android/server/credentials/metrics/EntryEnum;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/metrics/EntryEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

.field public static final sKeyToEntryCode:Ljava/util/Map;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    new-instance v1, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v3, "ACTION_ENTRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    new-instance v3, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v5, "CREDENTIAL_ENTRY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    new-instance v5, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string/jumbo v7, "REMOTE_ENTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    new-instance v7, Lcom/android/server/credentials/metrics/EntryEnum;

    const-string v9, "AUTHENTICATION_ENTRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/server/credentials/metrics/EntryEnum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    filled-new-array {v0, v1, v3, v5, v7}, [Lcom/android/server/credentials/metrics/EntryEnum;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    iget v1, v1, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v11, "action_key"

    invoke-direct {v9, v11, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v7, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v7, "authentication_action_key"

    invoke-direct {v1, v7, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v5, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "remote_entry_key"

    invoke-direct {v1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v3, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "credential_key"

    invoke-direct {v1, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    iget v2, v3, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "save_entry_key"

    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v10

    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return-void
.end method

.method public static getMetricCodeFromString(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->sKeyToEntryCode:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "EntryEnum"

    const-string v0, "Attempted to use an unsupported string key entry type"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return p0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    const-class v0, Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/EntryEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/EntryEnum;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/metrics/EntryEnum;->$VALUES:[Lcom/android/server/credentials/metrics/EntryEnum;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/EntryEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/EntryEnum;

    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/metrics/EntryEnum;->mInnerMetricCode:I

    return p0
.end method
