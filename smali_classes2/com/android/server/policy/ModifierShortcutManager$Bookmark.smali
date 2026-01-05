.class public abstract Lcom/android/server/policy/ModifierShortcutManager$Bookmark;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public final mShift:Z

.field public final mShortcutChar:C


# direct methods
.method public constructor <init>(CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShortcutChar:C

    iput-boolean p2, p0, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;->mShift:Z

    return-void
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
