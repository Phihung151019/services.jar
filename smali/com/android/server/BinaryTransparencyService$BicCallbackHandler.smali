.class Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "installEventType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v1, "TransparencyService.BicCallbackHandler"

    if-eqz v0, :cond_6

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "Detected new bic event for: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_4

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "Package state is unavailable, ignoring the package "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TransparencyService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    :goto_0
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v0, p1, v3}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->collectAppInfo(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v1, v0}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    if-ne p1, v3, :cond_5

    new-instance p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    invoke-direct {p1}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;-><init>()V

    iput-object v0, p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {p0, p1}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    return-void

    :cond_5
    const-string/jumbo p0, "Unsupported BIC event: "

    invoke-static {p1, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    const-string/jumbo p0, "Package name or install type is unavailable, ignoring event"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
