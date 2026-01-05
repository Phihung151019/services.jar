.class public final synthetic Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageStats;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    iput-object p2, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageStats;

    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    invoke-interface {p1, v0, p0}, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;->augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    return-void
.end method
