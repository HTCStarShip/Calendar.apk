.class Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "showRecipientDialogClickListener"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/widget/ComposeTitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;->mTarget:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/ComposeTitle;

    .line 354
    .local v0, target:Lcom/htc/calendar/widget/ComposeTitle;
    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iput-object v1, v0, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    .line 359
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$showRecipientDialogClickListener;Lcom/htc/calendar/widget/ComposeTitle;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
