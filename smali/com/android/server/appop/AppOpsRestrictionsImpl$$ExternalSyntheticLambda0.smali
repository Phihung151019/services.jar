.class public final synthetic Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsRestrictionsImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsRestrictionsImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iput p2, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget p0, p0, Lcom/android/server/appop/AppOpsRestrictionsImpl$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mAppOpsRestrictionRemovedListener:Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    const/4 v1, -0x2

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/appop/AppOpsService;->notifyWatchersOnDefaultDevice(II)V

    return-void
.end method
