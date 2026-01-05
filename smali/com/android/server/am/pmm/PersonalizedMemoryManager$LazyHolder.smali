.class public abstract Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mMemoryEventHandler:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventHandler;

    iput-object v1, v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mMemoryEventThread:Lcom/android/server/ServiceThread;

    iput-object v1, v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mChangeObserver:Lcom/android/server/am/pmm/PersonalizedMemoryManager$OnDeviceAIChangeObserver;

    sput-object v0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    return-void
.end method
