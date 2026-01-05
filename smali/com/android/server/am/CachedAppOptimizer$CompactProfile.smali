.class public final enum Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/CachedAppOptimizer$CompactProfile;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

.field public static final enum SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string/jumbo v2, "SOME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v3, "ANON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    new-instance v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string v4, "FULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    const-class v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .locals 1

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->$VALUES:[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {v0}, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    return-object v0
.end method
