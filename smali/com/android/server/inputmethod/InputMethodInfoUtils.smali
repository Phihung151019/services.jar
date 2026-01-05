.class public abstract Lcom/android/server/inputmethod/InputMethodInfoUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ENGLISH_LOCALE:Ljava/util/Locale;

.field public static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;


# direct methods
.method public static -$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_4

    invoke-virtual {p0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public static getAuxilaryRemoveList(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.svoiceime/.BixbyDictVoiceReco"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 14

    sget-object v7, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-string v11, "InputMethodInfoUtils"

    const/4 v12, 0x0

    if-ge v10, v8, :cond_2

    aget-object v3, v7, v10

    move v13, v9

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_1

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "keyboard"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    move-object v7, v3

    goto :goto_5

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v8, v7

    move v10, v9

    :goto_3
    if-ge v10, v8, :cond_5

    aget-object v3, v7, v10

    move v13, v9

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_4

    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "keyboard"

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found no fallback locale. imis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v12

    :goto_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v12, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object v4, v12

    new-instance v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v12, v4

    goto/16 :goto_6

    :cond_6
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    move-object v12, v4

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_6

    :cond_7
    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    move-object v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "keyboard"

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No software keyboard is found. imis="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " systemLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fallbackLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    if-nez p2, :cond_12

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p1

    move-object v4, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_9

    :cond_d
    move v3, v9

    move v4, v3

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    invoke-static {v5, p0, v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    move v3, v9

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v4, p0, v9}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->-$$Nest$smisSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getMostApplicableDefaultIME(): Set the default IME to Honeyboard"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    const-string v1, "InputMethodInfoUtils"

    invoke-static {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :cond_3
    :goto_1
    if-lez v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/inputmethod/InputMethodInfoUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string/jumbo v5, "keyboard"

    invoke-static {v3, v4, v1, v5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v3

    :cond_5
    if-gez v2, :cond_3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/SubtypeUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method
