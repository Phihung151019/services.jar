.class public final Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/DisassociationProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 7

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iget-object p2, p2, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iget-object v3, v3, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object v4, v3, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object v3

    new-instance v5, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    const/4 v6, 0x1

    invoke-direct {v5, v2, p1, v6}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;II)V

    invoke-static {v3, v5}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    iget-object v4, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    const-string/jumbo v5, "revoked"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iget-object p1, p1, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iget-object p2, p1, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "CDM_DisassociationProcessor"

    const-string/jumbo p2, "Stop listening to uid importance changes."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;I)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to stop listening to uid importance changes."

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
