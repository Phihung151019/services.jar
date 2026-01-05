.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const-string/jumbo p1, "PackageFeatureUserChangePersister"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$msaveFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->-$$Nest$mloadFiles(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
