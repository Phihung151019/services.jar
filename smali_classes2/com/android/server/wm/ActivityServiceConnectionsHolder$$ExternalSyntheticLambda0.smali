.class public final synthetic Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->disconnectActivityFromServices(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mIsDisconnecting:Z

    return-void
.end method
