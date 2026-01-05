.class public final Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

.field public final mSearchContext:Landroid/app/search/SearchContext;

.field public final mSessionId:Landroid/app/search/SearchSessionId;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/SearchContext;Landroid/os/IBinder;Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    sget v0, Lcom/android/server/searchui/SearchUiPerUserService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating SearchSessionInfo for session Id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SearchUiPerUserService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSearchContext:Landroid/app/search/SearchContext;

    iput-object p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mDeathRecipient:Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;

    return-void
.end method
