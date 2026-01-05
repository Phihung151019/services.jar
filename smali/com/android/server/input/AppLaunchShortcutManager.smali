.class public final Lcom/android/server/input/AppLaunchShortcutManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

.field public static final sApplicationLaunchKeyRoles:Landroid/util/SparseArray;


# instance fields
.field public final mBookmarks:Ljava/util/Map;

.field public mConsumeSearchKeyUp:Z

.field public final mContext:Landroid/content/Context;

.field public mSearchKeyShortcutPending:Z

.field public final mShortcutKeyServices:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string/jumbo v3, "android.app.role.BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0x41

    const-string/jumbo v2, "android.intent.category.APP_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xcf

    const-string/jumbo v2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd0

    const-string/jumbo v2, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd1

    const-string/jumbo v2, "android.intent.category.APP_MUSIC"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v0, 0xd2

    const-string/jumbo v2, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    return-void
.end method
