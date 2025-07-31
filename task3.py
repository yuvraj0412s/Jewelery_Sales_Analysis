import pandas as pd

df = pd.read_csv("jewelry.csv")

df.columns = [
    "event_time", "user_id", "item_id", "quantity", "product_id", 
    "category", "is_purchase", "price", "session_id", 
    "unknown_flag", "color", "material", "gem"
]

df.to_csv("jewelry_cleaned.csv", index=False)
