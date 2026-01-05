.class public interface abstract Lcom/android/server/pm/pkg/PackageUserStateInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserState;
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateDefault;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateDefault;

    return-void
.end method


# virtual methods
.method public abstract getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
.end method

.method public abstract getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
.end method

.method public abstract getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
.end method
