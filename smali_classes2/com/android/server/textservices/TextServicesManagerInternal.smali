.class public abstract Lcom/android/server/textservices/TextServicesManagerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NOP:Lcom/android/server/textservices/TextServicesManagerInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/textservices/TextServicesManagerInternal$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerInternal;->NOP:Lcom/android/server/textservices/TextServicesManagerInternal$1;

    return-void
.end method


# virtual methods
.method public abstract getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
.end method
