.class public final Lcom/android/server/chimera/genie/GenieLRUList;
.super Ljava/util/LinkedHashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static instance:Lcom/android/server/chimera/genie/GenieLRUList;

.field public static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/genie/GenieLRUList;
    .locals 2

    sget-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/genie/GenieLRUList;

    invoke-direct {v1}, Lcom/android/server/chimera/genie/GenieLRUList;-><init>()V

    sput-object v1, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
