.class public final Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/apphibernation/AppHibernationService$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/android/server/apphibernation/UserLevelHibernationProto;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    return-void
.end method
