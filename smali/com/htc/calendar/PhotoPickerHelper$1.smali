.class final Lcom/htc/calendar/PhotoPickerHelper$1;
.super Ljava/lang/Object;
.source "PhotoPickerHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/PhotoPickerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 41
    invoke-static {}, Lcom/htc/calendar/PhotoPickerHelper;->access$000()I

    move-result v0

    #calls: Lcom/htc/calendar/PhotoPickerHelper;->pickerOnGallery(I)V
    invoke-static {v0}, Lcom/htc/calendar/PhotoPickerHelper;->access$100(I)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 44
    invoke-static {}, Lcom/htc/calendar/PhotoPickerHelper;->access$200()I

    move-result v0

    #calls: Lcom/htc/calendar/PhotoPickerHelper;->pickerOnCamera(I)V
    invoke-static {v0}, Lcom/htc/calendar/PhotoPickerHelper;->access$300(I)V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 47
    #calls: Lcom/htc/calendar/PhotoPickerHelper;->removePhoto()V
    invoke-static {}, Lcom/htc/calendar/PhotoPickerHelper;->access$400()V

    goto :goto_0
.end method
