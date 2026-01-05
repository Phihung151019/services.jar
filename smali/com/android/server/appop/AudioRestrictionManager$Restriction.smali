.class public final Lcom/android/server/appop/AudioRestrictionManager$Restriction;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NO_EXCEPTIONS:Landroid/util/ArraySet;


# instance fields
.field public exceptionPackages:Landroid/util/ArraySet;

.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    return-void
.end method
