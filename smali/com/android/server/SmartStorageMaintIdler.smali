.class public Lcom/android/server/SmartStorageMaintIdler;
.super Landroid/app/job/JobService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;


# instance fields
.field public final mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

.field public mJobParams:Landroid/app/job/JobParameters;

.field public final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/SmartStorageMaintIdler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SmartStorageMaintIdler;->SMART_STORAGE_MAINT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/SmartStorageMaintIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/SmartStorageMaintIdler$1;-><init>(Lcom/android/server/SmartStorageMaintIdler;)V

    iput-object v0, p0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/SmartStorageMaintIdler$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/SmartStorageMaintIdler$2;-><init>(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;Lcom/android/server/StorageManagerService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1
.end method
