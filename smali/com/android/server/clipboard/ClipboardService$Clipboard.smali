.class public final Lcom/android/server/clipboard/ClipboardService$Clipboard;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final activePermissionOwners:Ljava/util/HashSet;

.field public final deviceId:I

.field public final mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

.field public final mNotifiedUids:Landroid/util/SparseBooleanArray;

.field public mPrimaryClipPackage:Ljava/lang/String;

.field public mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field public primaryClip:Landroid/content/ClipData;

.field public final primaryClipByUid:Ljava/util/Map;

.field public final primaryClipListeners:Landroid/os/RemoteCallbackList;

.field public primaryClipUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipByUid:Ljava/util/Map;

    const/16 v0, 0x270f

    iput v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    iput p1, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    return-void
.end method
