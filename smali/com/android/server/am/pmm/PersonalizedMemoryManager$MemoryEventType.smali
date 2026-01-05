.class public final enum Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

.field public static final enum LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v1, "LMKD_KILL"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    new-instance v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string/jumbo v2, "PREV_PROC_DIED"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v3, "DEVICE_IDLE"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v3}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    const-string v4, "APP_LAUNCHED"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4, v4}, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    const-class v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;
    .locals 1

    sget-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->$VALUES:[Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {v0}, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->mTypeName:Ljava/lang/String;

    return-object p0
.end method
