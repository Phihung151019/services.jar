.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/UserLevelState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/UserLevelState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    iput p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    iget p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    iget-object v1, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    const/16 v2, 0x172

    invoke-static {v2, v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    return-void
.end method
