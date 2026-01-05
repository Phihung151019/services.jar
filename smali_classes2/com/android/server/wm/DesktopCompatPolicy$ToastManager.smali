.class public final Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sInstance:Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;


# instance fields
.field public mLastToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->sInstance:Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;

    return-void
.end method
