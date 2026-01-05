.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CONTROL_STRINGS:[Ljava/lang/String;

.field public static final MODE_STRINGS:[Ljava/lang/String;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "disabled"

    const-string/jumbo v1, "enabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    const-string/jumbo v0, "suppressed"

    const-string/jumbo v1, "proactive"

    const-string/jumbo v2, "default"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->CONTROL_STRINGS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->MODE_STRINGS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->name:Ljava/lang/String;

    filled-new-array {p0, v0, v2, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: %s, %s, %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
