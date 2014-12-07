;;;
;;;

(import os requests)


(defn get-json [service path params]
  (let [[url (.format "http://api.wmata.com/{}.svc/json/{}" service path)]]
    (assoc params "api_key" *api-key*)
    (.json (apply requests.get [url] {"params" params}))))


(defn get-api-key []
  (let [[env-key (.get os.environ "WMATA_API_KEY")]]
    (if (is-not nil env-key)
      env-key
      (.strip (.read (open (.expanduser os.path "~/.wmata.key") "r"))))))


(def *api-key* (get-api-key))
