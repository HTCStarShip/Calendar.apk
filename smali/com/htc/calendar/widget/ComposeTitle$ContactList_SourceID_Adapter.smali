.class Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;
.super Landroid/widget/IMECursorAdapter;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactList_SourceID_Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    .line 2145
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/IMECursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2146
    return-void
.end method

.method static synthetic access$2800(Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;)Landroid/widget/CursorAdapter$ChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 2200
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2201
    .local v0, contact_id:J
    const-string v5, "display_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2204
    .local v2, display_name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2205
    iget-object v5, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/htc/calendar/widget/ComposeTitle;->access$1800(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2208
    :cond_0
    const v5, 0x7f0d002d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    .line 2209
    .local v4, text1:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f0d002e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    .line 2211
    .local v3, img1:Lcom/htc/widget/HtcListItemImageButton;
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2212
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2231
    iget-object v5, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/util/calendar/tools/IconTools;->getTypeIconByAccountType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2232
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 2150
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 2187
    :goto_0
    return-void

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mCursor:Landroid/database/Cursor;

    .line 2155
    .local v0, tmpCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 2156
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;Landroid/database/Cursor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2173
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mCursor:Landroid/database/Cursor;

    .line 2174
    if-eqz p1, :cond_2

    .line 2175
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2176
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2177
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mRowIDColumn:I

    .line 2178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mDataValid:Z

    .line 2180
    invoke-virtual {p0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2182
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mRowIDColumn:I

    .line 2183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mDataValid:Z

    .line 2185
    invoke-virtual {p0}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2302(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2241
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickContactId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$2502(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Ljava/lang/String;

    .line 2252
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mClickName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$2300(Lcom/htc/calendar/widget/ComposeTitle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 2191
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2192
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    .line 2194
    .local v1, view:Lcom/htc/widget/HtcListItem;
    return-object v1
.end method

.method public reQueryOnBackgroundThread(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, s:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2270
    if-nez p1, :cond_0

    move-object v0, v1

    .line 2277
    :goto_0
    return-object v0

    .line 2274
    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2275
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterFacebookType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$3000(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2277
    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 2
    .parameter "constraint"

    .prologue
    .line 2259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2260
    :cond_0
    const/4 v0, 0x0

    .line 2264
    :goto_0
    return-object v0

    .line 2261
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2262
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v1, ""

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterFacebookType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3000(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 2264
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_SourceID_Adapter;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->doFilterFacebookType(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$3000(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method
